class c_995_1;
    integer i = -164;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_995_1;
    c_995_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx0zxxx00z00zxxz0x00zxx001zxx111zxxxxxxxxzzzxzxzzxzxzxxxzxzxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
