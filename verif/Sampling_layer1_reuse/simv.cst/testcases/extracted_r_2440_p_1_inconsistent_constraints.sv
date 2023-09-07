class c_2440_1;
    integer i = -405;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2440_1;
    c_2440_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z10x0z0x11011x1x11zx1zx0x1xz1000xzzxzxzxzxxxzzzxxzxxxxxxzzzzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
