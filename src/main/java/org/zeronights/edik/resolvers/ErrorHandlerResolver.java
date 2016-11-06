package org.zeronights.edik.resolvers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerExceptionResolver;
import org.springframework.web.servlet.ModelAndView;

@Component
public class ErrorHandlerResolver implements HandlerExceptionResolver {
	private static final Logger logger = LoggerFactory.getLogger(ErrorHandlerResolver.class);

	@Override
	public ModelAndView resolveException(HttpServletRequest req, HttpServletResponse resp, Object handler,
			Exception exception) {
		logger.error("smth went wrong ! " + exception.getMessage() + ":  "  + exception);
		exception.printStackTrace();
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("error");
		return mav;
	}

}
