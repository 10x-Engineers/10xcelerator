class c_314_1;
    integer i = -312;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_314_1;
    c_314_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11100z1z0z1z1x1z10z111xx0x010100zxxzxzzxzzzzzzzxxxxxzxxxzzzzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
