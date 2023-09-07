class c_2564_1;
    integer i = -426;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2564_1;
    c_2564_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "110x1x01x1xxx1zx10z0z1xzzx00z1z1xxzxzzxzxxxxzxxxzzxxxzzzzzxzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
