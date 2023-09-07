class c_435_1;
    integer i = -71;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_435_1;
    c_435_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x0zz00zz0z011xx1zz1110zz11zzz0zzzzxzxzxxzzxzxzzxxzxzzzzxzzzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
