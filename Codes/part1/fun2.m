t = linspace(0.01, 1, 1000); % تعریف محور افقی
f = (1+t).*sin(1./t); % تعریف تابع
plot(t, f); % رسم تابع
xlabel('Time (s)'); % نامگذاری محور افقی
ylabel('Amplitude'); % نامگذاری محور عمودی
title('Function 2'); % عنوان نمودار