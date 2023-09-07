class c_300_1;
    integer i = -298;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_300_1;
    c_300_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1zxz0z0z0xz1x1xxzx11011z10xz1xxzzzzxxzzzzzxzzxzxzzxxxxxzxxxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
