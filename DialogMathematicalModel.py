A1 = 35.00  # Whatsapp Facebook Only
P1 = 360.00

A2F = 8.00
A2W = 7.00
A2Y = 20.00
P2 = 310.00

A3F = 4.00
A3W = 4.00
A3Y = 1.00
A3A = 19.00  # Anytime data
P3 = 370.00

# Details of Package - Dialog 4G Video Blaster 327 Unlimited Package

A4A = 3.5
P4 = 327

# Dialog Unlimited YouTube 100 Package
P5 = 100

# Dialog Fun Blaster Prepaid 447 Unlimited Package
P6 = 447
A6A = 1

# Internet Card 30days 239
P7 = 239 
A7A = 2.62 +0.666


# Inputs
Whatsapp = 0.01  # change these values to tune the code
Facebook = 0.01
Youtube = 0.09
Other = 3

if Other > 0:
    flag = -1
else:
    flag = 1


# For Package one deciding
m = P1 * (1.00 - (Whatsapp + Facebook + Youtube) / A1)
if flag == -1:
    m = -1


# For Package two deciding
n1 = P2 * ((A2W - Whatsapp) / A2W)
n2 = P2 * ((A2F - Facebook) / A2F)
n3 = P2 * ((A2Y - Youtube) / A2Y)

n_values = [n1, n2, n3]
sign = 1 if all(value >= 0 for value in n_values) and flag >= 0 else -1
n = (sum(abs(value) for value in n_values) * sign) / 4.1


# For Package three deciding
q = (P3 * (1.00 - (Whatsapp + Facebook + Youtube) / (A3A + A3W + A3F + A3Y))) / 1.09


# For Dialog 4G Video Blaster 327 Unlimited Package
DialogVideoBlaster = P4 * (1.00 - (Whatsapp + Facebook + Other) / A4A)

# For Dialog Unlimited YouTube 100 Package
YouTube100Package = -1 * (Whatsapp + Facebook + Other)
if YouTube100Package >= 0:
    YouTube100Package += 100

# For Dialog Fun Blaster Prepaid 447 Unlimited Package
FunBlaster =  P6 * (1.00 - (Whatsapp + Facebook + Youtube+ Other) / A6A)

# For Internet Card 30days 239
IC239 =  P7 * (1.00 - (Whatsapp + Facebook + Youtube+ Other) / A7A)




print(m)
print(n)
print(q)
print(DialogVideoBlaster)
print(YouTube100Package)
print(FunBlaster)
print(IC239)


def select_package():
    packages = {
        "m": m,
        "n": n,
        "q": q,
        "DialogVideoBlaster": DialogVideoBlaster,
        "YouTube100Package": YouTube100Package,
        "Dialog Fun Blaster Prepaid 447": FunBlaster,
        "Internet Card for 30days for Rs 239":IC239,
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
