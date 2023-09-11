class c_2994_1;
    integer i = -497;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2994_1;
    c_2994_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxxx1xx010zxx00011xx000x1zxxz00xxxxxzxzxzxxzxxxzzxxzxzxxxzzxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
