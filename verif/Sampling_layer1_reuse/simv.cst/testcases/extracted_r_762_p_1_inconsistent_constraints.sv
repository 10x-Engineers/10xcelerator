class c_762_1;
    integer i = -125;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_762_1;
    c_762_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z011x0x1z00z0xxxx1x10011011xx1z0xxzzxzxxzxxxxzxzxzzzzxzxxxxzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
