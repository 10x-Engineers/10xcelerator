class c_1586_1;
    integer i = -263;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1586_1;
    c_1586_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0110x11xz1xxz1111001x0z11z1z0z1zzzxxzzzxxzxxzzzxxzxzzxxzxzzxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
