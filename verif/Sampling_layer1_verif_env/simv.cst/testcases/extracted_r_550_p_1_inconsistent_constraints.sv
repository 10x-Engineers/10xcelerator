class c_550_1;
    integer i = -90;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_550_1;
    c_550_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0zxx111zxz1001x1x1z1z000z1xx1xzxzxxxxzzxzxxzxzzzxzzxxxzxxxzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
