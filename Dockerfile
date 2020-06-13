FROM centos:latest
MAINTAINER gt@localhost
RUN yum install openssh-server -y
RUN ssh-keygen -A
EXPOSE 2424
RUN echo root:a | chpasswd
ADD http://vault.centos.org/6.10/os/Source/SPackages/vsftpd-2.2.2-24.el6.src.rpm  /mnt/
VOLUME /home/personal-volume
CMD /usr/sbin/sshd -D

