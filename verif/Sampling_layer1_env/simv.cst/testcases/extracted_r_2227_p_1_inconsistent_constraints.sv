class c_2227_1;
    integer i = -370;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2227_1;
    c_2227_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x101x0xz11010xxxz01010xzxzz1xxxzxzxxzzzzzzzzxxzzxxxxzzzzzxxzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
