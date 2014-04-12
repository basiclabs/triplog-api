Installation Instructions
-------------------------
```bash
git clone https://github.com/basiclabs/triplog-api.git
cd triplog-api
bundle install
sequel -m migrations/ sqlite://dev.db
```
