class c_494_1;
    integer i = -492;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_494_1;
    c_494_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0z00zx01101xz0z1zxx0xxz1xx0xxz1zxzxxzzzzzzzxxxxxxxzxzxzzxxzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
