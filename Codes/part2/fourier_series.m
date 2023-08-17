function [s, p] = fourier_series(Num, P, alpha, Nshow)
% Calculate the Fourier series coefficients and plot the Fourier series for f(x) = x^alpha
% Num: number of terms in the Fourier series
% P: period of the function
% alpha: power of the polynomial
% Nshow: number of terms to display in the output

    syms x;
    f = x^alpha;
    a_0 = int(f, x, -pi, pi) / pi;
    a = sym(zeros(Num, 1));
    b = sym(zeros(Num, 1));
    for n = 1:Num
        a(n) = (2/P) * int(f * cos(2*pi*n*x/P), x, -pi, pi);
        b(n) = (2/P) * int(f * sin(2*pi*n*x/P), x, -pi, pi);
    end
    s = a_0/2;
    p = s;
    for n = 1:Num
        p = p + a(n) * cos(2*pi*n*x/P) + b(n) * sin(2*pi*n*x/P);
        if n <= Nshow
            s = s + a(n) * cos(2*pi*n*x/P) + b(n) * sin(2*pi*n*x/P);
        end
    end
    s = simplify(s);
    p = simplify(p);
    display(s);
    fplot(p, [-P/2, P/2]);
end