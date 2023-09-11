class c_1509_1;
    integer i = -250;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1509_1;
    c_1509_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0xxxz01x0z11zz0x010x0zzz10x100zxzxzzxxxzzxxzzzzzzzxxxzxzzzxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
