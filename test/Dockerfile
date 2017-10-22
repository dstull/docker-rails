FROM rails-raw

RUN yum -y install \
			chromedriver \
			chromium \
			gnu-free-sans-fonts \
			xorg-x11-server-Xvfb \
			&& \
			yum clean all \
			&& \
			:

ENV RAILS_ENV test