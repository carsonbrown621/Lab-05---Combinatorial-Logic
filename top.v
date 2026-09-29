module top(
    input [6:0] sw,
    output [1:0] led
);

    // Circuit A
    circuit_a A1 (
        .A(sw[0]),
        .B(sw[1]),
        .C(sw[2]),
        .D(sw[3]),
        .Y(led[0])
    );

    // Circuit B
    // Circuit A output becomes Circuit Bs, A input
    circuit_b B1 (
        .A(led[0]),
        .B(sw[4]),
        .C(sw[5]),
        .D(sw[6]),
        .Y(led[1])
    );

endmodule