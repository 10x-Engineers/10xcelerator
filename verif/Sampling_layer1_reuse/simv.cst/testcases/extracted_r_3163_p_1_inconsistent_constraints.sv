class c_3163_1;
    integer i = -526;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3163_1;
    c_3163_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11xxz1zxxxzzx00z01011x11z1z1z1zxzzxxxxzxzxxzxzzzzzxxxxxzxxxzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
