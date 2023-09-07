class c_2421_1;
    integer i = -402;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2421_1;
    c_2421_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzz00xx00x10zz0xzzzxz0x11111xx11zzzxxzzxxzxzxxxxzzzxzxzzzzzzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
