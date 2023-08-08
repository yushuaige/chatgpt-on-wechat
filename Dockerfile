FROM ghcr.io/zhayujie/chatgpt-on-wechat:latest

RUN sed -i 's/\(\s*\)elif reply_content\["completion_tokens"\] > 0:/\1if reply_content\["completion_tokens"\] >= 0:/g' ./bot/chatgpt/chat_gpt_bot.py

ENTRYPOINT ["/entrypoint.sh"]
