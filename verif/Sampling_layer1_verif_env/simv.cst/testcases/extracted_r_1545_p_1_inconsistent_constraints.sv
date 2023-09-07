class c_1545_1;
    integer i = -256;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1545_1;
    c_1545_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z00z011z0x0x0zz1z111100z00xxz1xxzzzzzxxxxzxxxxxxxxxxxzxzzxxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
