class c_2425_1;
    integer i = -403;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2425_1;
    c_2425_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z0xz101z111100zxx10xx111zxx1xxzxzxxzxxxzxzxxzzxzzzxxzxzzxzxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
