class c_2203_1;
    integer i = -366;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2203_1;
    c_2203_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0zxx0zz0z110xx0x11zzxzzx0x1xxx0zxzxzzxxxzzzzxxxzzzzxxxxzxxxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
