class c_1809_1;
    integer i = -300;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1809_1;
    c_1809_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxz0zzzxx10x10x1xz1xx10z0x10zz00xzxxxzzxxzxzxzzzzxxzzzzzxzzzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
