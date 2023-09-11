class c_2496_1;
    integer i = -414;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2496_1;
    c_2496_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz00x0xxxz1xzz0z010x010x0x101xzxzzxxzzxzzzxxzzxxxzxzzzxzzzzxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
