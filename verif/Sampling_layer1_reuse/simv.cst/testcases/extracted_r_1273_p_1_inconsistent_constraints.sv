class c_1273_1;
    integer i = -211;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1273_1;
    c_1273_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0011x0x0xzxzzx010xx0xxxx10xx0x0xzzxxzzxxxzxxxzzzzxzxxzzxzzzxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
