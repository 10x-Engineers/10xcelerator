class c_193_1;
    integer i = 193;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_193_1;
    c_193_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1011z1x100zxx1xx0xxx10z001z0z0x1xzzzzzxxxxzzxzzxzzzzxzzzxzxzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
