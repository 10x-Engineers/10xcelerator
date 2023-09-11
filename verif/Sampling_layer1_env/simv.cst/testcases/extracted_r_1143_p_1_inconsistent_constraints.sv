class c_1143_1;
    integer i = -189;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1143_1;
    c_1143_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxxz0zz10z1z1zxz1xzxx1xx10x1zz00xxxxxzxzxzzxxzzzxxxzzxxzxzxzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
