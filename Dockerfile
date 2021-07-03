FROM centos
RUN yum clean all
EXPOSE 22
ADD ./sysctl.conf /etc/sysctl.conf
ADD ./sshd_config /etc/ssh/sshd_config
#RUN systemctl restart network.service
RUN echo root:Passwd@321 | chpasswd
#RUN systemctl restart sshd.service
#RUN yum install -y openssh-server
RUN  echo "SPGI-BASE-CentOS-Conainer" > /etc/system_build-image
RUN echo "10 May 2021" >> /etc/system_build-image

