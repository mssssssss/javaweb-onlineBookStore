package com.bookstore.servlet; /**
 * Copyright (C), 2015-2019
 * FileName: ${NAME}
 * Author:   niko
 * Date:     2019/6/6 23:04
 * Description: ${DESCRIPTION}
 * History:
 * <author>          <time>          <version>
 *        23:04           1.0
 */

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.Random;

/**
 * Copyright (C), 2015-2019
 * ProjectName: javaweb-onlineBookStore
 * Author:   niko
 * Date:     2019/6/6 23:04
 * <author>          <time>          <version>          
 *         23:04           1.0
 */
@WebServlet(name = "VerificationServlet",urlPatterns = "/VerificationServlet")
public class VerificationServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 设置浏览器不缓存
        response.setHeader("Pragma", "no-cache");
        response.setHeader("Cache-Control", "no-cache");
        response.setDateHeader("Expires", 0);
        //设置响应类型
        response.setContentType("image/jpeg");
        //定义图片宽高
        int width = 60;
        int height = 20;

        BufferedImage img = new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB);

        Graphics g = img.getGraphics();
        g.setColor(new Color(255, 253, 253));
        g.fillRect(0, 0, width, height);

        g.setFont(new Font("微软雅黑", Font.ITALIC, 18));
        String srand = "";
        Random random = new Random();
        for (int i = 0; i < 4; i++) {
            String rand = String.valueOf(random.nextInt(10));
            srand += rand;
            //随机更换颜色，以便验证码数字颜色多样
            g.setColor(new Color(30 + random.nextInt(160), 50 + random.nextInt(100), 80 + random.nextInt(140)));
            //将随机数画入图形
            g.drawString(rand, i*16, 18);
        }
        for (int i = 0; i < 30; i++) {
            int x=random.nextInt(width);
            int y=random.nextInt(height);
            int x1=random.nextInt(10);
            int y1=random.nextInt(10);
            g.drawLine(x, y, x+x1, y+y1);
        }
        request.getSession().setAttribute("yzm", srand);
        //释放 图形资源
        g.dispose();
        ImageIO.write(img, "jpeg", response.getOutputStream());

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
