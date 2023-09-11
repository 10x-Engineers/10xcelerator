class c_837_1;
    integer i = -138;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_837_1;
    c_837_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10xz1z1zxz0x1x001x0z00zz10xzxxx1xzxzzzxxxxxzzzxzzzxzzzzxxzzxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
