class c_1389_1;
    integer i = -230;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1389_1;
    c_1389_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0z1100010xxx1z1z01x0xz10xz00z01xzxzxxzzzzzzxzzzxzzxzxxxxxzzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
