class c_416_1;
    integer i = -414;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_416_1;
    c_416_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1z0z00101zz010x010xxz101x110z10xzzzzzzxxxzxxxzxzzzxxzzzzzxzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
