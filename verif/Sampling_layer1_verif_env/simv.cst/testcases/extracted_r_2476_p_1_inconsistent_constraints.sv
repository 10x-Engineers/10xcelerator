class c_2476_1;
    integer i = -411;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2476_1;
    c_2476_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10110z10101x0zx1010xzx0000011000xxzxxxxzzxxxzzxzzxzzxxxzxxxxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
