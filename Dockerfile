FROM sandy1709/catuserbot:slim-buster

# Cloning-Repo
RUN git clone https://github.com/ashty-drone/CatTemplate3.git /root/userbot

#Setting up Working Directory
WORKDIR /root/userbot

# Installing requirements
RUN python3 -m pip install --upgrade pip && \
    python3 -m pip install -r requirements.txt

# Configuring Environment
ENV PATH="/home/userbot/bin:$PATH"

# Catuserbot!
CMD ["sh","start.sh"]
