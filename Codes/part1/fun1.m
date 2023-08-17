t = linspace(-10, 10, 1000); % تعریف محور افقی
f = cos(pi*t/4).*sin(pi*t/8); % تعریف تابع
plot(t, f); % رسم تابع
xlabel('Time (s)'); % نامگذاری محور افقی
ylabel('Amplitude'); % نامگذاری محور عمودی
title('Function 1'); % عنوان نمودار