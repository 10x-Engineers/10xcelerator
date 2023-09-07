class c_1332_1;
    integer i = -220;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1332_1;
    c_1332_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xxzzz1101011zzzz1xzz1zzx0zxxx01xxxxxzxzzzxzxzxzxxzxzzxzzxxzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
