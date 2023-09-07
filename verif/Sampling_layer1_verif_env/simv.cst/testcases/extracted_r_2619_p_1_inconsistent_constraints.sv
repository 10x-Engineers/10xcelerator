class c_2619_1;
    integer i = -435;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2619_1;
    c_2619_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zz0z111zz111xxxz001zz00x1zzxz01xxxzzzxzzxxzxzzzzxzxzxzxxxxzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
