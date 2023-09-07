class c_664_1;
    integer i = -109;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_664_1;
    c_664_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xzz11x111zzzx10zzzzz00xxxx1x01xxzzzzxxxxxxzzxzxxxxxzxzxzxzxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
