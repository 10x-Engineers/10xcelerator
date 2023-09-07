class c_1354_1;
    integer i = -224;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1354_1;
    c_1354_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xz1z0x1xzz01111z000z1xxx001x11zxxzzxzxzzxxxxxzzzzzzxxzxzxzzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
