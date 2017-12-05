-- wordpress huge_it_slider update automatically
--this is because of everyday newspaper insertion on TV

--create a cronjob on server to do this every day (period)
--download images and upload them

-- do below insertion in a loop for each image in specified folder

--start loop

 INSERT INTO `monitor_hugeit_slider_slider` (`name`, `width`, `height`, `effect`, `pause_time`, `change_speed`, `position`, `show_loading_icon`, `navigate_by`, `pause_on_hover`, `video_autoplay`, `random`) VALUES ('13960913', '1024', '600', 'random', '30000', '1000', 'center', '0', 'thumbnail', '1', '0', '1')
 ---new slider created

  SELECT post_name FROM monitor_posts WHERE post_name like '4a213d37%' AND ID != 0 -- LIMIT 1
--find duplicated post_names 

-- another loop in loop to find bestname for name or can add date to it instead of date

INSERT INTO `monitor_posts` (`post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_content_filtered`, `post_title`, `post_excerpt`, `post_status`, `post_type`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_parent`, `menu_order`, `post_mime_type`, `guid`) VALUES (1, '2017-12-03 05:50:13', '2017-12-03 06:50:13', '', '', '160c8865', '', 'inherit', 'attachment', 'open', 'closed', '', '160c8865-60', '', '', '2017-12-03 05:50:13', '2017-12-03 06:50:13', 0, 0, 'image/jpeg', 'http://ip-address/wp-content/uploads/2017/12/160c8865-2.jpg')
--insert new post

--select id of new post by post_name

INSERT INTO `monitor_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (@newid, '_wp_attached_file', '2017/12/160c8865-2.jpg')

 INSERT INTO `monitor_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (@newid, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:953;s:4:\"file\";s:22:\"2017/12/160c8865-2.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"160c8865-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"160c8865-2-300x238.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:238;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"160c8865-2-768x610.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:610;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"160c8865-2-1024x813.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:813;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"revolve-port-grid-thumb\";a:4:{s:4:\"file\";s:22:\"160c8865-2-480x480.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"revolve-blog-grid-thumb\";a:4:{s:4:\"file\";s:22:\"160c8865-2-500x500.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"revolve-team-grid-thumb\";a:4:{s:4:\"file\";s:22:\"160c8865-2-800x800.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}')
 --new post meta data

--find id of post name inserted new

INSERT INTO `monitor_hugeit_slider_slide` (`slider_id`, `attachment_id`, `type`, `order`, `draft`) VALUES ('96', @newid, 'image', '0', '0')
--insert slide

--update post  that show slider
UPDATE `monitor_posts` SET `post_author` = 1, `post_date` = '2017-04-24 14:24:35', `post_date_gmt` = '2017-04-24 10:54:35', `post_content` = '[huge_it_slider id=\"98\"]\r\n\r\n', `post_content_filtered` = '', `post_title` = '', `post_excerpt` = '', `post_status` = 'publish', `post_type` = 'page', `comment_status` = 'closed', `ping_status` = 'closed', `post_password` = '', `post_name` = '%d8%a2%d8%ae%d8%b1%db%8c%d9%86-%d8%a7%d8%ae%d8%a8%d8%a7%d8%b1', `to_ping` = '', `pinged` = '', `post_modified` = '2017-12-05 04:00:59', `post_modified_gmt` = '2017-12-05 05:00:59', `post_parent` = 0, `menu_order` = 0, `post_mime_type` = '', `guid` = '@ipaddress/monitor/wordpress/?page_id=25' WHERE `ID` = @postid 

--last thing: reset webpages has shown on any where
-- I use custom.txt file on root and see it every 1 second with ajax
-- when I want refresh anywhere , rename custom0.txt and rename it again to custom.txt