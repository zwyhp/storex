package com.lianxi.timetask;



import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import com.sun.org.apache.bcel.internal.generic.NEW;
/**
 * 定时任务
 * @author lenovo
 *
 */
@Component
public class TimeTask {
	
	@Scheduled(cron="0 0/10 * * * ?")
	public void presentTime() {
		System.out.println("当前时间"+ new SimpleDateFormat("yyyy-MM-dd").format(new Date()));
	}
}
