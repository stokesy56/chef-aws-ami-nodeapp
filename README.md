# Creating AMI :sushi: :fried_shrimp: :watermelon: :avocado: :strawberry: :kiwi_fruit:

1) Install packer
2) App repo
3) Berks file
4) WorkingRepo/cookbook
5) Download Reop locally
6) Create packer.json file
7) Define variable
8) .bash_profile (export variables)
9) Build AMI

### Some commands - important stuff:
- berks vendor cookbook - merges both cookbooks into one big cookbook
- touch packer.json
- echo "export AWS_SECRET_KEY_ID" = 'blabla' >> .bash_profile
- packer validate packer.json - checks if packer.json has any errors i.e. typo
- packer build packer.json - makes the AMI
