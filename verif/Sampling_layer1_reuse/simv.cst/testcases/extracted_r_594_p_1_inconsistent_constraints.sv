class c_594_1;
    integer i = -97;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_594_1;
    c_594_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x0xx1zxz00xx1x000x0xz1z1xzz0xzxxxzzzzxxzxxxzzxxzxzxxzzzzxzxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
