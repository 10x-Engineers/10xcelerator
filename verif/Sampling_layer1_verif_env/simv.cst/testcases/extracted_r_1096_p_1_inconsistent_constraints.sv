class c_1096_1;
    integer i = -181;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1096_1;
    c_1096_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zxx11xxx11z00z1110x1z1x01zz0zx1zzzzxxzzzzzzzxzxzxzxzzxxzxzzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
