class c_1084_1;
    integer i = -179;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1084_1;
    c_1084_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1xz1x1x0zzz0zzz1zzx11z111zz011zzxxxxxxzxzxzzxzxzxzxzzxzzxzxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
