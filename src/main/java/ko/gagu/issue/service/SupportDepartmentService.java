package ko.gagu.issue.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.servlet.ModelAndView;

import ko.gagu.issue.dao.SupportDepartmentDAO;
import ko.gagu.issue.dto.SupportDepartmentDTO;
import ko.gagu.issue.dto.stockentries_tbDTO;
import ko.gagu.issue.dto.warehouse_tbDTO;

@Service
public class SupportDepartmentService {
	
	private final Logger logger = LoggerFactory.getLogger(SupportDepartmentService.class);
	private final SupportDepartmentDAO supportDAO;
	
	public SupportDepartmentService(SupportDepartmentDAO dao) {
		this.supportDAO = dao;
	}

	public Map<String, Object> clientList(int currPage, int cnt, String clientSearch) {
		int start = (currPage-1)*cnt;
		
		Map<String, Object> result = new HashMap<String, Object>();
		
		List<SupportDepartmentDTO> list = supportDAO.clientList(cnt, start, clientSearch);
		
		result.put("list", list);
		result.put("currPage",currPage);
		result.put("totalPages", supportDAO.clientListAllCount(cnt, clientSearch));	
		
		for (SupportDepartmentDTO r : list) {
			logger.info(r.getIdx_business()+"");
			logger.info(r.getClient_name() + "");
			logger.info(r.getClient_phone_num()+"");
			logger.info(r.getAddress()+"");
		}
		
		return result;
	}

	public ModelAndView clientReg(Map<String, String> param) {
		ModelAndView mav = new ModelAndView();
		String page = "";
		
		String address = param.get("address");
        String detailAddress = param.get("detail_address");
        String fullAddress = address + " " + detailAddress;
        
        param.put("full_address", fullAddress);
        int row = (int) supportDAO.clientReg(param);
        
        if (row > 0) {
        	page = "redirect:/businessPartnerList.go";
        }else {
        	page = "redirect:/businessPartnerList.go";
        }
        mav.setViewName(page);
		return mav;
	}

	public int del(List<String> delList) {
		int cnt = 0;
	    for (String idx : delList) {
	        cnt += supportDAO.del(idx);
	    }
	    return cnt;
	}

	public Map<String, Object> getClient(int idx) {
		
		return supportDAO.getClient(idx);
	}

	public ModelAndView clientEdit(Map<String, String> param) {
		ModelAndView mav = new ModelAndView();
		String page = "";
		
		String address = param.get("address");
        String detailAddress = param.get("detail_address");
        String fullAddress = address + " " + detailAddress;
        
        logger.info("유형 : "+param.get("client_type"));
        
        param.put("full_address", fullAddress);
        int row = (int) supportDAO.clientEdit(param);
        
        if (row > 0) {
        	page = "redirect:/businessPartnerList.go";
        }else {
        	page = "redirect:/businessPartnerList.go";
        }
        mav.setViewName(page);
		return mav;
	}

	public void clientDetail(String idx_business, Model model) {
		SupportDepartmentDTO dto = supportDAO.clientDetail(idx_business);
		
		model.addAttribute("client", dto);

	}

	public Map<String, Object> purchaseHistory(int currPage, int cnt, String idx_business) {
		int start = (currPage-1)*cnt;
		
		Map<String, Object> result = new HashMap<String, Object>();
		List<SupportDepartmentDTO> list = supportDAO.purchaseHistory(cnt, start, idx_business);
		
		result.put("list", list);
		result.put("currPage",currPage);
		result.put("totalPages", supportDAO.purchaseHistoryAllCount(cnt, idx_business));
		
		return result;
	}

	public Map<String, Object> deliveryHistory(int currPage, int cnt, String idx_business) {
		int start = (currPage-1)*cnt;
		
		Map<String, Object> result = new HashMap<String, Object>();
		List<SupportDepartmentDTO> list = supportDAO.deliveryHistory(cnt, start, idx_business);
		
		result.put("list", list);
		result.put("currPage",currPage);
		result.put("totalPages", supportDAO.deliveryHistoryAllCount(cnt, idx_business));
		
		return result;
	}

	public Map<String, Object> storageList(int currPage, int cnt) {
		int start = (currPage-1)*cnt;
		
		Map<String, Object> result = new HashMap<String, Object>();
		List<warehouse_tbDTO> list = supportDAO.storageList(cnt, start);
		
		result.put("list", list);
		result.put("currPage",currPage);
		result.put("totalPages", supportDAO.storageListAllCount(cnt));
		
		return result;
	}




}
