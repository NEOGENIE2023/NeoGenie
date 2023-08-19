A1 = 20.00  # Fun Blaster 217 - Whatsapp Facebook
P1 = 217.00

A2F = 8.00
A2W = 7.00
A2Y = 20.00
P2 = 310.00

A3F = 4.00
A3W = 4.00
A3Y = 1.00
A3A = 19.00  # Anytime data
P3 = 370.00

# Details of Package - Hutch Nonstop Youtube 315 Unlimited Package

A4A = 1.3
P4 = 315

# Mobitel Unlimited YouTube Package
P5 = 360

# Hutch Nonstop whatsapp Facebook with anytime
P6 = 652
A6A = 8.2

# Mobitel One Shot Unlimited
P11 = 989
A11A = 30

# Anytime Pack of 4.7 GB
P7 = 389
A7A = 4.7

#Fun Blaster 297 - Tiktok Instagram
P8 = 297
A8A = 15

# Hutch Unlimited TikTok Package
P10 = 353

# Mobitel Unlimited Messenger Package
P12 = 70

# Mobitel Social Networking Unlimited
P13 = 145

# Hutch All your favorite Apps Non-Stop
P14 = 479

# Inputs
Whatsapp = 0.00  # change these values to tune the code
Facebook = 0.01
Youtube = 0.0
Tiktok = 0.01
Instagram = 0.0
Telegram = 0.0
Other = 0

if Other > 0:
  flag = -1
else:
  flag = 1

# For Fun Blaster 217 - Whatsapp + Facebook deciding
m = P1 * (1.00 - (Whatsapp + Facebook) / A1)
if flag == -1 or Youtube or Tiktok or Instagram or Telegram:
  m = -1

# For Package two deciding
n1 = P2 * ((A2W - Whatsapp) / A2W)
n2 = P2 * ((A2F - Facebook) / A2F)
n3 = P2 * ((A2Y - Youtube) / A2Y)

n_values = [n1, n2, n3]
sign = 1 if all(value >= 0 for value in n_values) and flag >= 0 else -1
n = (sum(abs(value) for value in n_values) * sign) / 4.1

# For Package three deciding
q = (P3 *
     (1.00 - (Whatsapp + Facebook + Youtube + Tiktok + Instagram + Telegram) /
      (A3A + A3W + A3F + A3Y))) / 1.09

# Hutch Nonstop Youtube 315 Unlimited Package
Hutch_Nonstop_Youtube = P4 * (1.00 - (Whatsapp + Facebook + Youtube + Tiktok + Instagram + Telegram + Other) / A4A)

# For Hutch Unlimited Facebook Whatsapp Package
Hutch_Unlimited_Facebook_Whatsapp_Package = -1 * ( Youtube + Tiktok + Instagram +
                          Telegram + Other)
if Hutch_Unlimited_Facebook_Whatsapp_Package >= 0:
  Hutch_Unlimited_Facebook_Whatsapp_Package = 224

# For Hutch Unlimited TikTok Package
Hutch_Unlimited_TikTok = -1 * (Whatsapp + Facebook + Youtube + Instagram +
                                 Telegram + Other)
if Hutch_Unlimited_TikTok >= 0:
  Hutch_Unlimited_TikTok = 353

# For Hutch Nonstop Youtube,Whatsapp,Facebook Package
Hutch_Nonstop_Youtube_Whatsapp_Facebook = -1 * (+Tiktok + Instagram +
                                 Telegram + Other)
if Hutch_Nonstop_Youtube_Whatsapp_Facebook >= 0:
  Hutch_Nonstop_Youtube_Whatsapp_Facebook = 361

# For Mobitel Unlimited Messaging Package
Mobitel_Unlimited_Messaging_Package = -1 * (Facebook + Youtube + Tiktok +
                                            Instagram + Telegram + Other)
if Mobitel_Unlimited_Messaging_Package >= 0:
  Mobitel_Unlimited_Messaging_Package += 98

# For Mobitel Social Networking Unlimited
Mobitel_Social_Networking_Unlimited = -1 * (Whatsapp + Youtube + Tiktok +
                                            Telegram + Other)
if Mobitel_Social_Networking_Unlimited >= 0:
  Mobitel_Social_Networking_Unlimited += 97

# For Hutch All your favorite Apps Non-Stop
favorite_Apps_Non_Stop =  -1 * Other
if favorite_Apps_Non_Stop >= 0:
  favorite_Apps_Non_Stop += 97

# For Hutch Nonstop whatsapp Facebook with anytime
Hutch_Nonstop_whatsapp_Facebook_with_anytime = P6 * (1.00 - (Youtube + Tiktok + Instagram + Telegram + Other) / A6A)

# For Mobitel One shot Unlimted
One_shot_Unlimted = P11 * (1.00 - (Telegram + Other) / A11A)

# For Anytime Pack of 4.7 GB for 30 days
Anytime_Pack_of_47 = P7 * (1.00 - (Whatsapp + Facebook + Youtube + Tiktok + Instagram + Telegram + Other) / A7A)

# For Fun Blaster 297 - Tiktok Instagram
FB297 = P8 * (1.00 - (Tiktok + Instagram) / A8A)
if flag == -1 or Youtube or Whatsapp or Facebook or Telegram:
  FB297 = -1

# ALL unlimited Package
P9 = 1625
A1560 = 100000000

print(m)
#print(n)
#print(q)
#print(DialogVideoBlaster)
#print(YouTube100Package)
#print(FunBlaster)
#print(IC239)
#print(FB297)
#print(A1560)


def select_package():
  packages = {
    #"Fun Blaster 217 - Whatsapp Facebook": m,
    #"n": n,
    "Hutch_Nonstop_Youtube_Whatsapp_Facebook for 361": Hutch_Nonstop_Youtube_Whatsapp_Facebook,
    "Hutch_Nonstop_Youtube for 315": Hutch_Nonstop_Youtube,
    #"YouTube360Package": YouTube360Package,
    "Hutch_Unlimited_TikTok": Hutch_Unlimited_TikTok,
    #"Mobitel Tripple Buddy": Mobitel_Tripple_Buddy,
    #"One_shot_Unlimted": One_shot_Unlimted,
    #"Mobitel_Unlimited_Messaging_Package": Mobitel_Unlimited_Messaging_Package,
    #"Mobitel_Social_Networking_Unlimited": Mobitel_Social_Networking_Unlimited,
    "Hutch_Nonstop_whatsapp_Facebook_with_anytime": Hutch_Nonstop_whatsapp_Facebook_with_anytime,
    "Hutch_Unlimited_Facebook_Whatsapp_Package":Hutch_Unlimited_Facebook_Whatsapp_Package,
    "Anytime_Pack_of_4.7_GB":Anytime_Pack_of_47,
    "Hutch_Nonstop_whatsapp_Facebook_with_anytime":Hutch_Nonstop_whatsapp_Facebook_with_anytime,
    #"Fun Blaster 297 - Tiktok Instagram":FB297,
    "Hutch Cliq Non-Stop package for 1625": A1560,
  }
  available_packages = [pkg for pkg, value in packages.items() if value >= 0]
  if available_packages:
    return min(available_packages, key=lambda x: packages[x])
  return None


package = select_package()

if package:
  print(f"Select package {package}")
else:
  print("No available package")
