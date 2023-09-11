class c_1138_1;
    integer i = -188;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1138_1;
    c_1138_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00111xx1001x111zzzx1z010xzx1z1z1xxzzxzxzzxxxxxxxzzxxxxxzxxxxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
