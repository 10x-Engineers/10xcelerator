class c_186_1;
    integer i = -29;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_186_1;
    c_186_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zx10xxxxx101z00z0101x1z011xzx01zxzxzxzxzzzxxzxxxxxzzzzxzxxxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
