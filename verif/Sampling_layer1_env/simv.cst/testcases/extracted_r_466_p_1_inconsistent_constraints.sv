class c_466_1;
    integer i = -76;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_466_1;
    c_466_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zzzxxzzxzxz0zxx1x1z0x110zz100xzzxzxzxzzzxzxxzzxzzzzzzzxxxxzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
