class c_1307_1;
    integer i = -216;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1307_1;
    c_1307_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxzx1z000xz10zx1xz011xz1010x01xxzxxxxxzzzzxxzxxzzxxxxzxzzzxxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
