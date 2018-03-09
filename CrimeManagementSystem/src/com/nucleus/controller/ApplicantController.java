package com.nucleus.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.nucleus.bean.CivilianBean;
import com.nucleus.bean.OfficerBean;

/**
 * Servlet implementation class ApplicantController
 */
@WebServlet("/ApplicantController")
public class ApplicantController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static Logger logger = Logger.getLogger(ApplicantController.class);

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ApplicantController() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doProcessing(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");

		// Building Session Factory
		SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();

		String action = request.getParameter("action");
		HttpSession userSession = request.getSession();

		/////////////////////////////////////////////////////////////////////
		////////////////////// Officer Registration
		/////////////////////////////////////////////////////////////////////
		if (action.equalsIgnoreCase("RegisterOfficer")) {

			try {
				Session session = sessionFactory.openSession();
				session.beginTransaction();

				String stationName = request.getParameter("Police Station Name");
				String stationArea = request.getParameter("Area");
				String officerName = request.getParameter("name");
				String emailAddress = request.getParameter("email");
				String password = request.getParameter("password");
				String rePassword = request.getParameter("rePassword");
				String terms = request.getParameter("terms");

				OfficerBean officerBean = new OfficerBean();
				officerBean.setStationName(stationName);
				officerBean.setStationArea(stationArea);
				officerBean.setOfficerName(officerName);
				officerBean.setEmailAddress(emailAddress);
				officerBean.setPassword(password);
				
				userSession.setAttribute("stationName", stationName);
				userSession.setAttribute("stationArea", stationArea);
				userSession.setAttribute("officerName", officerName);
				userSession.setAttribute("emailAddress", emailAddress);

				session.persist(officerBean);
				logger.info(officerBean);

				RequestDispatcher dispatcher = request.getRequestDispatcher("officerlogin.jsp");
				dispatcher.forward(request, response);
				
				session.getTransaction().commit();
				session.close();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				logger.warn(e);
			}

		}

		/////////////////////////////////////////////////////////////////////
		////////////////////// Civilian Registration
		/////////////////////////////////////////////////////////////////////
		else if (action.equalsIgnoreCase("RegisterCivilian")) {

			try {
				Session session = sessionFactory.openSession();
				session.beginTransaction();

				String phoneNumber = request.getParameter("phonenumber");
				String firstName = request.getParameter("firstname");
				String lastName = request.getParameter("lastname");
				String emailAddress = request.getParameter("email");
				String password = request.getParameter("password");
				String rePassword = request.getParameter("rePassword");
				String terms = request.getParameter("terms");

				CivilianBean civilianBean = new CivilianBean();
				civilianBean.setMobileNumber(phoneNumber);
				civilianBean.setApplicantFirstName(firstName);
				civilianBean.setApplicantLastName(lastName);
				civilianBean.setEmailId(emailAddress);
				civilianBean.setPassword(password);
				
				userSession.setAttribute("civilianName", firstName+lastName);
				userSession.setAttribute("phoneNumber", phoneNumber);
				userSession.setAttribute("emailID", emailAddress);
				
				RequestDispatcher dispatcher = request.getRequestDispatcher("civilianlogin.jsp");
				dispatcher.forward(request, response);

				session.persist(civilianBean);
				logger.info(civilianBean);

				session.getTransaction().commit();
				session.close();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				logger.warn(e);
			}

		}

		/////////////////////////////////////////////////////////////////////
		////////////////////// Officer Login
		/////////////////////////////////////////////////////////////////////
		else if (action.equalsIgnoreCase("LoginOfficer")) {

			try {
				logger.info("Entering The LoginOfficer Method");

				Session session = sessionFactory.openSession();
				session.beginTransaction();

				String email = request.getParameter("email");
				String stationName = request.getParameter("stationname");
				String password = request.getParameter("password");
				String rememberMe = request.getParameter("rememberme");

				List<OfficerBean> loginList = new ArrayList<OfficerBean>();

				Query query = session.createQuery("from OfficerBean");

				loginList = query.list();
				boolean result = false;

				for (OfficerBean row : loginList) {
					if (row.getEmailAddress().equals(email) && row.getPassword().equals(password)
							&& row.getStationName().equals(stationName)) {
						result = true;
						userSession.setAttribute("stationName", stationName);
						userSession.setAttribute("stationArea", row.getStationArea());
						userSession.setAttribute("officerName", row.getOfficerName());
						userSession.setAttribute("emailAddress", row.getEmailAddress());
						out.println("welcome " + row.getOfficerName());
						
						RequestDispatcher dispatcher = request.getRequestDispatcher("officerlogin.jsp");
						dispatcher.forward(request, response);
						
						break;
					}
				}

				session.getTransaction().commit();
				session.close();

				logger.info("Exiting The LoginOfficer Method");
			} catch (Exception e) {
				logger.warn(e);
			}
		}

		/////////////////////////////////////////////////////////////////////
		////////////////////// Civilian Login
		/////////////////////////////////////////////////////////////////////
		else if (action.equalsIgnoreCase("LoginCivilian")) {

			try {
				logger.info("Entering The LoginCivilian Method");

				Session session = sessionFactory.openSession();
				session.beginTransaction();

				String email = request.getParameter("email");
				String password = request.getParameter("password");
				String rememberMe = request.getParameter("rememberme");

				List<CivilianBean> loginList = new ArrayList<CivilianBean>();

				Query query = session.createQuery("from CivilianBean");

				loginList = query.list();
				boolean result = false;

				for (CivilianBean row : loginList) {
					if (row.getEmailId().equalsIgnoreCase(email) && row.getPassword().equalsIgnoreCase(password)) {
						result = true;
						userSession.setAttribute("phoneNumber", row.getMobileNumber());
						userSession.setAttribute("civilianName", row.getApplicantFirstName() + row.getApplicantLastName());
						userSession.setAttribute("emailID", row.getEmailId());
						
						RequestDispatcher dispatcher = request.getRequestDispatcher("civilianlogin.jsp");
						dispatcher.forward(request, response);
						
						logger.info("Match Found");
						break;
					}
				}

				session.getTransaction().commit();
				session.close();

				logger.info("Exiting The LoginCivilian Method");
			} catch (Exception e) {
				logger.warn(e);
			}
		}

		/////////////////////////////////////////////////////////////////////
		////////////////////// Registering FIR
		/////////////////////////////////////////////////////////////////////
		else if (action.equalsIgnoreCase("registerFIR")) {
			List<String> list = new ArrayList<String>();

			logger.info(list);
		}

	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doProcessing(request, response);
	}

}
