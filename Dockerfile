# Nginx 이미지를 기반으로 사용
FROM nginx:alpine

# Nginx 설정 파일 복사 (필요한 경우)
COPY nginx.conf /etc/nginx/nginx.conf

# React 빌드 파일을 Nginx의 서빙 디렉토리로 복사
COPY ./dist /usr/share/nginx/html

# Nginx 포트 노출
EXPOSE 80

# Nginx 실행
CMD ["nginx", "-g", "daemon off;"]
