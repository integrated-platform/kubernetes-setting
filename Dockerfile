FROM nginx:alpine

# 2. Nginx 설정 파일을 복사 (필요한 경우 Nginx 설정을 수정)
COPY nginx.conf /etc/nginx/nginx.conf

# React 빌드 파일을 Nginx가 제공할 디렉토리로 복사
COPY --from=build /app/dist /usr/share/nginx/html

# Nginx 포트 노출
EXPOSE 80

# Nginx 실행
CMD ["nginx", "-g", "daemon off;"]
