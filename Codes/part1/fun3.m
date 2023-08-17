t1 = linspace(-10, -3, 1000); % تعریف محور افقی برای بخش اول تابع
t2 = linspace(-3, 3, 1000); % تعریف محور افقی برای بخش دوم تابع
t3 = linspace(3, 10, 1000); % تعریف محور افقی برای بخش سوم تابع
f1 = -1*ones(size(t1)); % تعریف بخش اول تابع
f2 = t2; % تعریف بخش دوم تابع
f3 = exp(-3*t3); % تعریف بخش سوم تابع
plot(t1, f1, t2, f2, t3, f3); % رسم تابع
xlabel('Time (s)'); % نامگذاری محور افقی
ylabel('Amplitude'); % نامگذاری محور عمودی
title('Function 3'); % عنوان نمودار